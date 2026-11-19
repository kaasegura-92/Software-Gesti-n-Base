# Base de datos

## Instalación

Usar estos archivos únicamente en el Supabase nuevo y vacío de Software de Gestión Base. No ejecutarlos en Original ni en TEST.

1. En el proyecto nuevo, abrir **SQL Editor** y ejecutar `001_base_schema.sql` una sola vez.
2. En **Authentication > Users**, crear `karen.segurauni@gmail.com` con su contraseña privada.
3. Volver al SQL Editor y ejecutar `002_register_general_admin.sql` para agregar esa cuenta a `administradores`.
4. Luego obtener la Project URL y publishable key del proyecto nuevo y configurar el HTML. No usar la contraseña Postgres ni una clave `service_role` en el navegador.

## Contenido

`001_base_schema.sql` se generó como exportación de esquema solamente desde el respaldo avanzado TEST. No contiene filas, usuarios, productos ni ventas. Contiene 19 tablas, 24 funciones, 23 políticas RLS y 20 triggers. Las políticas y permisos se ajustaron para que el administrador se identifique por el registro de rol, sin depender del UUID de Karen en el proyecto anterior.

La aplicación mantiene los módulos de ventas, productos/stock, caja, gastos, clientes/fiados, consumo personal, ganancias, anotaciones y avisos. Esta instalación queda vacía; los datos de negocio no se copiaron.

Si el SQL Editor informa cualquier error, detenerse y guardar el mensaje completo. No repetir el script en el mismo proyecto después de haberlo ejecutado parcialmente.
