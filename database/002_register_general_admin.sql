-- Ejecutar después de crear este usuario en Authentication > Users.
-- Solo agrega a la administradora general; no crea ni expone contraseñas.
BEGIN;
DO $admin$
DECLARE
  v_user_id uuid;
BEGIN
  SELECT u.id INTO v_user_id
  FROM auth.users AS u
  WHERE lower(u.email) = lower('karen.segurauni@gmail.com')
  LIMIT 1;

  IF v_user_id IS NULL THEN
    RAISE EXCEPTION 'No se encontró el usuario Karen. Crealo primero en Authentication > Users.';
  END IF;

  INSERT INTO public.administradores (usuario_id, nombre)
  VALUES (v_user_id, 'Karen')
  ON CONFLICT (usuario_id) DO UPDATE SET nombre = EXCLUDED.nombre;
END
$admin$;
COMMIT;
