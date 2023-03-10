import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestAcceso {

	public static void main(String[] args) {

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver"); // ¿Tenemos vinculada la clase en el proyecto?

			System.out.println("Se encontró el Driver para OracleDB - !La librería necesaria está referenciada!");

			// Aquí debajo va el código que queramos ejecutar...

			// Creamos la conexión con la clase Connection.
			Connection con = null;

			try {

				// Instanciamos el objeto connection.
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1", "JAVA", "JAVA");

				// Confirmamos por un mensaje de consola que pasamos la creación.
				System.out.println("\n Conexión creada con éxito, es posible acceder a la Base de Datos!");

				// Aquí debajo continúa el código si no ocurre la excepción.

				System.out.println("\n Aquí continúa el código si no ocurre la excepción.");

				// Vamos a consultar a la Base de Datos por la tabla PERSONAS.

				String consulta = "SELECT * FROM PERSONA";

				try {

					// Creamos la sentencia.
					Statement sentencia = con.createStatement();

					// Creamos un result set, ejecutando la consulta a la base. (es la respuesta de
					// la BD).
					ResultSet personasRs = sentencia.executeQuery(consulta);

					// Recorremos la respuesta.

					System.out.println("\n Nombres de cada registro de la BD: \n");

					while (personasRs.next()) {

						System.out.println(personasRs.getString("NOMBRE1"));

					}

					System.out.println("\n Primer Apellido de cada registro de la BD: \n");

					personasRs = sentencia.executeQuery(consulta);

					while (personasRs.next()) {

						System.out.println(personasRs.getString("APELLIDO1"));

					}

				} catch (SQLException sqlex) {
					System.out.println("Error al ejecuta la consulta: " + consulta);
					sqlex.printStackTrace();
					return;
				}

				// Vamos a ver como cerrar/liberar el objeto Connection.

				try {

					con.close();
					System.out.println("\n Conexión cerrada con éxito, no es posible acceder a la Base de Datos!");

				} catch (SQLException sqlex) {

					System.out.println("Error al cerrar la conexión!");
					sqlex.printStackTrace();
					return;
				}

			} catch (SQLException sqlex) {

				System.out.println("No se logró instanciar la conexión!");
				sqlex.printStackTrace();
				return;
			}

		} catch (ClassNotFoundException cnfex) {

			System.out.println("No tenemos el Driver en el build-path de nuestro proyecto!");
			cnfex.printStackTrace();
			return;

		}

	}

}
