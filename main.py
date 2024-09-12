import streamlit as st
import pandas as pd
import os
import mysql.connector
from mysql.connector import Error

st.title("Upload students")


def insert_students_in_bulk(df, table_name='students'):
    connection = None
    cursor = None

    try:

        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='college_manager'
        )

        if connection.is_connected():
            cursor = connection.cursor()

            insert_query = f"""
            INSERT INTO {table_name} (full_name, emails, code)
            VALUES (%s, %s, %s)
            """

            students_data = df.to_records(index=False).tolist()

            cursor.executemany(insert_query, students_data)

            connection.commit()

            print(f"{cursor.rowcount} rows inserted successfully.")

    except Error as e:
        print(f"Error: {e}")
        if connection:
            connection.rollback()

    finally:
        if cursor is not None:
            cursor.close()
        if connection is not None and connection.is_connected():
            connection.close()


def extract_students_from_excel(excel_file):
    try:
        df = pd.read_excel(excel_file)
    except Exception as e:
        st.write(f"Error al leer el archivo Excel: {e}")
        return []

    df = df.rename(columns={
        'Nombres': 'first_name',
        'Apellidos': 'last_name',
        'Correo Electrónico': 'emails',
        'Codigo': 'code',
    })

    df['fullName'] = df['first_name'] + ' ' + df['last_name']

    df = df[['fullName', 'emails', 'code']]

    insert_students_in_bulk(df, table_name='students')

    show_students_from_db()


def show_students_from_db():
    connection = None
    cursor = None

    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='college_manager'
        )

        if connection.is_connected():
            cursor = connection.cursor()

            select_query = "SELECT full_name, emails, code FROM students"
            cursor.execute(select_query)

            students = cursor.fetchall()

            df_students = pd.DataFrame(students, columns=['Nombre Completo', 'Correo Electrónico', 'Código'])

            st.write(df_students)

    except Error as e:
        st.write(f"Error: {e}")

    finally:
        if cursor is not None:
            cursor.close()
        if connection is not None and connection.is_connected():
            connection.close()

uploaded_file = st.file_uploader("Attendance list Excel file", type=["xls", "xlsx"])

if st.button("Save students"):
    if uploaded_file is not None:
        extract_students_from_excel(uploaded_file)
        st.write("Students have been created successfully")

show_students_from_db()