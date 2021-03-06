package unae.lp3.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Productos")
public class Producto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto_increment MySQL
	private int prod_id;
	private String descripcion;
	private String imagen;
	private int stock;
	private float precio;
	
	@OneToOne
	@JoinColumn(name = "almacen_id")
	private Almacenamiento almacenamiento;
	
	@OneToOne
	@JoinColumn(name = "model_id")
	private Modelo modelo;
	
	@OneToOne
	@JoinColumn(name = "mem_id")
	private Memoria memoria;
	
	@OneToOne
	@JoinColumn(name = "color_id")
	private Color color;
	
	public Producto() {
		super();
	}
	public int getProd_id() {
		return prod_id;
	}
	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	
	public Almacenamiento getAlmacenamiento() {
		return almacenamiento;
	}
	public void setAlmacenamiento(Almacenamiento almacenamiento) {
		this.almacenamiento = almacenamiento;
	}
	public Modelo getModelo() {
		return modelo;
	}
	public void setModelo(Modelo modelo) {
		this.modelo = modelo;
	}

	public Memoria getMemoria() {
		return memoria;
	}
	public void setMemoria(Memoria memoria) {
		this.memoria = memoria;
	}
	public Color getColor() {
		return color;
	}
	public void setColor(Color color) {
		this.color = color;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	
	@Override
	public String toString() {
		return "Producto [prod_id=" + prod_id  + ", model_id=" + ", descripcion=" + descripcion + ", imagen=" + imagen + ", stock="
				+ stock + ", precio=" + precio + "]";
	}
}