# Software-Gesti-n-Base
Software de Gestión Comercial


Proyecto independiente iniciado desde la copia verificada del sistema original Planeta 24. El kiosco operativo y sus respaldos no se modificaron.

## Estado

- Interfaz con identidad genérica y tema azul/blanco.
- Asistente visual reemplazado por un robot genérico; mensajes neutrales. Audio e imágenes anteriores quitados; el audio queda opcional para futuras personalizaciones.
- Módulos existentes preservados en esta primera copia para decidir cuáles quedan comunes y cuáles serán opcionales.
- Desconectado del Supabase del kiosco: el cliente usa un endpoint `.invalid` y una clave de reemplazo. No iniciar sesión ni cargar datos hasta configurar una instancia nueva.
- El identificador de administrador de notificaciones del kiosco fue retirado. Habilitarlo en la nueva instancia con autorización del lado de la base.

## Administradora general prevista

`karen.segurauni@gmail.com`

El panel de avisos reconoce este correo. Además, hay que crear el usuario y asignar su rol administrador en la nueva instancia de Supabase. No es una contraseña ni una clave; los permisos de operaciones deben validarse en el servidor.

## Publicación

Para Cloudflare Pages, usar `public` como directorio de salida. Ese directorio contiene solo `index.html`; documentación y archivos de desarrollo quedan fuera del sitio público.

## Próximos pasos

1. Definir módulos comunes y opciones por rubro/plan.
2. Crear un Supabase nuevo para esta base, sin copiar datos del kiosco.
3. Ajustar autorización, usuarios y esquema de datos antes de habilitar operaciones.
4. Revisar referencias específicas de kiosco para convertirlas en genéricas o dejarlas opcionales.
5. Conectar este proyecto a un repositorio GitHub nuevo, separado del repositorio del kiosco.