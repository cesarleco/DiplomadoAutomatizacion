
# Variable para administrar los archivos de códigos promocionales de renta
$rent_code_file = {
    :mozilla => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/renta_mozilla.txt'),
    :chrome => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/renta_chrome.txt'),
    :safari => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/renta_safari.txt'),
    :edge => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/renta_edge.txt'),
    :iexplorer => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/renta_iexplorer.txt')
}

# Variable para administrar los archivos de códigos promocionales usados de renta
$rent_output_file = {
    :mozilla => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_renta_mozilla.txt'),
    :chrome => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_renta_chrome.txt'),
    :safari => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_renta_safari.txt'),
    :edge => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_renta_edge.txt'),
    :iexplorer => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_renta_iexplorer.txt')
}

# Variable para administrar los archivos de códigos promocionales de suscripción
$subscription_code_file = {
    :mozilla => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/suscripcion_mozilla.txt'),
    :chrome => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/suscripcion_chrome.txt'),
    :safari => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/suscripcion_safari.txt'),
    :edge => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/suscripcion_edge.txt'),
    :iexplorer => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/suscripcion_iexplorer.txt')
}

# Variable para administrar los archivos de códigos promocionales usados de suscripción
$subscription_output_file = {
    :mozilla => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_suscripcion_mozilla.txt'),
    :chrome => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_suscripcion_chrome.txt'),
    :safari => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_suscripcion_safari.txt'),
    :edge => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_suscripcion_edge.txt'),
    :iexplorer => File.join(File.dirname(__FILE__), '../global/config/data/codigos_promo/usados_suscripcion_iexplorer.txt')
}
