#include <stdio.h>
#include <gtk/gtk.h>
#include <glade/glade.h>
#include <trigo.h>
#define infinity 1<<30

GladeXML *xml;

int 
/* retorna infinity si la entrada es invalida*/
eatString( char* entry, guint16 size)
{
  int angle=0;
  guint16 i=0;
  if(size && entry[0]=='-')
    ++i;
	  
  for(; i< size ; ++i)
    {
      angle = angle*10 + (entry[i]-'0');
      if(entry[i]<'0' || entry[i]>'9' )
	{
	  angle = infinity;
	  break;
	}
    }

  if(angle > 360||size==0 )
    angle = infinity;
  else if(entry[0] == '-')
    angle = -angle;  
  return angle;
}


void 
on_boton_clicked (GtkButton *btn, gpointer data)
{

  GtkLabel *lans;
  lans = glade_xml_get_widget(xml,"lAns");

  GtkEntry *entry;
  entry = glade_xml_get_widget(xml,"entrAngulo");
  const gchar * value =gtk_entry_get_text (entry);
  guint16 size = gtk_entry_get_text_length(entry);
  int angle = eatString(value,size);
  if(angle >= infinity)
    {
      gtk_label_set_label (lans,"ERROR angulo");
      return;
    }
  GtkComboBox *op;
  op = glade_xml_get_widget(xml,"cmbFunciones");
  gchar *funcion = gtk_combo_box_get_active_text(op);
  
  if(funcion != NULL)
    {
      float ans ;
      if(funcion[0] == 'S')
	ans = seno(angle);
      else if(funcion[0] == 'C')
	ans = coseno(angle);
      else if(funcion[0] == 'T')
	ans = tangente(angle);
      
      gchar buff[20];
      sprintf(buff,"%f\0",ans);
      gtk_label_set_label (lans,buff);
    }
  else
    {
      gtk_label_set_label (lans,"ERROR funcion");
    }
  
}


int 
main (int argc, char *argv[])
{
  GtkWidget *window;
  
  gtk_init (&argc, &argv);
  xml = glade_xml_new ("interfaz.glade", NULL, NULL);
  window = glade_xml_get_widget (xml, "wPpal");
  glade_xml_signal_autoconnect (xml);
  gtk_widget_show_all (window);
  gtk_main ();
  return 0;
}
