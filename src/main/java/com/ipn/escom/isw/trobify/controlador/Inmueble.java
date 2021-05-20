
package com.ipn.escom.isw.trobify.controlador;

public class Inmueble {
 
    private int idInmueble;
    private float geoLong;
    private float geoLat;
    private String calle;
    private String numero;
    private String entrecalles;
    private int cp;
    private String colonia;
    private String municipio;
    private String estado;
    private float tam;
    private int cuartos;
    private int mediosBanios;
    private int baniosCompletos;
    private int estacionamiento;
    private int plantas;
    private String servicios;
    private float precio;
    private String detalles;
    private String usuarioEmail;
    private int tipoInmueble;
    private int tipoTrato;
    
    
    public Inmueble(int idInmueble,float geoLong,float geoLat,String calle,String numero,String entrecalles,int cp,String colonia,String municipio, String estado,float tam,int cuartos, int mediosBanios,int baniosCompletos,int estacionamiento,int plantas,String servicios,float precio,String detalles, String usuarioEmail,int tipoInmueble,int tipoTrato){
        this.idInmueble = idInmueble;
        this.geoLong = geoLong;
        this.geoLat = geoLat;
        this.calle = calle;
        this.numero = numero;
        this.entrecalles = entrecalles;
        this.cp = cp;
        this.colonia = colonia;
        this.municipio = municipio;
        this. estado = estado;
        this.tam = tam;
        this.cuartos = cuartos;
        this.mediosBanios = mediosBanios;
        this.baniosCompletos = baniosCompletos;
        this.estacionamiento = estacionamiento;
        this.plantas = plantas;
        this.servicios = servicios;
        this.precio = precio;
        this.detalles = detalles;
        this.usuarioEmail = usuarioEmail;
        this.tipoInmueble =tipoInmueble;
        this.tipoTrato = tipoTrato;
    }

    public int getIdInmueble() {
        return idInmueble;
    }

    public float getGeoLong() {
        return geoLong;
    }

    public float getGeoLat() {
        return geoLat;
    }

    public String getCalle() {
        return calle;
    }

    public String getNumero() {
        return numero;
    }

    public String getEntrecalles() {
        return entrecalles;
    }

    public int getCp() {
        return cp;
    }

    public String getColonia() {
        return colonia;
    }

    public String getMunicipio() {
        return municipio;
    }

    public String getEstado() {
        return estado;
    }

    public float getTam() {
        return tam;
    }

    public int getCuartos() {
        return cuartos;
    }

    public int getMediosBanios() {
        return mediosBanios;
    }

    public int getBaniosCompletos() {
        return baniosCompletos;
    }

    public int getEstacionamiento() {
        return estacionamiento;
    }

    public int getPlantas() {
        return plantas;
    }

    public String getServicios() {
        return servicios;
    }

    public float getPrecio() {
        return precio;
    }

    public String getDetalles() {
        return detalles;
    }

    public String getUsuarioEmail() {
        return usuarioEmail;
    }

    public int getTipoInmueble() {
        return tipoInmueble;
    }

    public int getTipoTrato() {
        return tipoTrato;
    }

    public void setIdInmueble(int idInmueble) {
        this.idInmueble = idInmueble;
    }

    public void setGeoLong(float geoLong) {
        this.geoLong = geoLong;
    }

    public void setGeoLat(float geoLat) {
        this.geoLat = geoLat;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public void setEntrecalles(String entrecalles) {
        this.entrecalles = entrecalles;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setTam(float tam) {
        this.tam = tam;
    }

    public void setCuartos(int cuartos) {
        this.cuartos = cuartos;
    }

    public void setMediosBanios(int mediosBanios) {
        this.mediosBanios = mediosBanios;
    }

    public void setBaniosCompletos(int baniosCompletos) {
        this.baniosCompletos = baniosCompletos;
    }

    public void setEstacionamiento(int estacionamiento) {
        this.estacionamiento = estacionamiento;
    }

    public void setPlantas(int plantas) {
        this.plantas = plantas;
    }

    public void setServicios(String servicios) {
        this.servicios = servicios;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    public void setUsuarioEmail(String usuarioEmail) {
        this.usuarioEmail = usuarioEmail;
    }

    public void setTipoInmueble(int tipoInmueble) {
        this.tipoInmueble = tipoInmueble;
    }

    public void setTipoTrato(int tipoTrato) {
        this.tipoTrato = tipoTrato;
    }

    @Override
    public String toString() {
        return "Inmueble{" + "idInmueble=" + idInmueble + ", geoLong=" + geoLong + ", geoLat=" + geoLat + ", calle=" + calle + ", numero=" + numero + ", entrecalles=" + entrecalles + ", cp=" + cp + ", colonia=" + colonia + ", municipio=" + municipio + ", estado=" + estado + ", tam=" + tam + ", cuartos=" + cuartos + ", mediosBanios=" + mediosBanios + ", baniosCompletos=" + baniosCompletos + ", estacionamiento=" + estacionamiento + ", plantas=" + plantas + ", servicios=" + servicios + ", precio=" + precio + ", detalles=" + detalles + ", usuarioEmail=" + usuarioEmail + ", tipoInmueble=" + tipoInmueble + ", tipoTrato=" + tipoTrato + '}';
    }
    
    
    
}
