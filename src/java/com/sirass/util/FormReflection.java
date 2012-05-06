/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sirass.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author g.gutierrez
 */
public class FormReflection {

    private Map<String, String[]> map;
    private Class clase;
    private Object object;

    public FormReflection(Map<String, String[]> map) {
        this.map = map;
    }

    public Object process() {
        String nombreClase = null;
        // Obtener el nombre de la clase a instanciar (tipo de formulario)
        nombreClase = map.get("clase")[0];

        if (nombreClase != null) {
            // Crear un objeto de la instancia de la clase
            this.object = getObject(nombreClase);
            if (this.object != null) {
                // Establecer los atributos de la clase
                setValues();
                return this.object;
            }
        }
        return null;
    }

    private Object getObject(String nombreClase) {
        try {
            // Intentar instanciar un objeto de ese tipo de clase
            this.clase = Class.forName(nombreClase);
            if (this.clase == null) {
                return null;
            }
            // Crear la instancia
            this.object = this.clase.newInstance();
            return this.object;
        } catch (InstantiationException ex) {
            Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, null, ex);
            Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, "La clase del formulario no existe!");
        }
        return null;
    }

    private void setValues() {
        String key = null;
        Class parameters[] = null;
        Object parameter[] = null;

        parameter = new Object[1];
        // Obtener los métodos declarados de la clase
        for (Method method : clase.getDeclaredMethods()) {
            // Detectar si tiene su set
            if ("set".equals(method.getName().substring(0, 3))) {
                key = method.getName().substring(3);
                key = key.substring(0, 1).toLowerCase() + key.substring(1);

                if (map.get(key) != null) {
                    try {
                        parameters = method.getParameterTypes();
                        if (parameters != null) {
                            parameter[0] = getParameter(parameters[0], map.get(key));
                            if (parameter[0] != null) {
                                method.invoke(object, parameter);
                            }
                        }
                    } catch (IllegalAccessException ex) {
                        Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (IllegalArgumentException ex) {
                        Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (InvocationTargetException ex) {
                        Logger.getLogger(FormReflection.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }

        }
    }

    private Object getParameter(Class aClass, String[] values) {
        Object object = null;
        String clase = aClass.getCanonicalName();
        if ("java.lang.String".equals(clase)) {
            object = values[0];
        } else if ("java.lang.Integer".equals(clase) || "int".equals(aClass.getCanonicalName())) {
            object = Integer.parseInt(values[0]);
        } else if ("java.lang.String[]".equals(clase)) {
            object = values;
        }
        return object;
    }
}
