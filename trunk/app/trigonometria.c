#include <gtk/gtk.h>
#include <glade/glade.h>

void 
on_back_clicked (GtkToolButton*);
void
on_forward_clicked (GtkToolButton*);
void 
on_up_clicked (GtkToolButton*);
void 
on_refresh_clicked (GtkToolButton*);
void 
on_delete_clicked (GtkToolButton*);
void 
on_home_clicked (GtkToolButton*);
void 
on_info_clicked (GtkToolButton*);
void 
on_go_clicked (GtkButton*);
void 
on_location_activate (GtkEntry*);
void 
on_row_activated (GtkTreeView*, GtkTreePath*, GtkTreeViewColumn*);

int main (int argc, char *argv[])
{
  GtkWidget *window;
  GladeXML *xml;
  gtk_init (&argc, &argv);
  xml = glade_xml_new ("interfaz.glade", NULL, NULL);
  window = glade_xml_get_widget (xml, "wPpal");
  glade_xml_signal_autoconnect (xml);
  gtk_widget_show_all (window);
  gtk_main ();
  return 0;
}
