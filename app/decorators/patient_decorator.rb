module PatientDecorator

  	def select_genre
    	[
	        ['Masculino', 1],
	        ['Femenino', 2]
    	]
  	end

	def label_genre
	    if select_genre.flatten.include?(genre.to_i)
	      select_genre.each { |first_name, id| return first_name if genre.to_i == id }
	    end
	end
  	
  	def select_document
    	[
	        ['Cedula de Ciudadania', 1],
	        ['Tarjeta de Identidad', 2],
	        ['Cedula de Extranjeria', 3],
	        ['Pasaporte', 4],
	        ['Documento nacional de identificación', 5],
	        ['Registro Civil', 6]
    	]
  	end

	def label_documento
	    if select_document.flatten.include?(type_document.to_i)
	      select_document.each { |first_name, id| return first_name if type_document.to_i == id }
	    end
	end
  	
  	def select_blood
    	[
	        ['O-', 1],
	        ['O+', 2],
	        ['A-', 3],
	        ['A+', 4],
	        ['B-', 5],
	        ['B+', 6],
	        ['AB-', 7],
	        ['AB+', 8]
    	]
  	end

	def label_blood
	    if select_blood.flatten.include?(blood_type.to_i)
	      select_blood.each { |first_name, id| return first_name if blood_type.to_i == id }
	    end
	end


  	def select_condition
    	[
	        ['Pasajero', 1],
	        ['Tripulante', 2],
	        ['Empleado', 3],
	        ['Visitante', 4],
	        ['Otro', 5]
    	]
  	end

  	def select_country
  		[
	  		["Afganistan", 1], 
			["Albania", 2], 
			["Alemania", 3],
			["Andorra", 4], 
			["Angola", 5], 
			["Antartida", 6], 
			["Antigua y Barbuda", 7], 
			["Arabia Saudi", 8], 
			["Argelia", 9], 
			["Argentina", 10], 
			["Armenia", 11], 
			["Australia", 12], 
			["Austria", 13], 
			["Azerbaiyan", 14], 
			["Bahamas", 15], 
			["Bahrain", 16], 
			["Bangladesh", 17], 
			["Barbados", 18], 
			["Belgica", 19], 
			["Belice", 20], 
			["Benin", 21], 
			["Bermudas", 22], 
			["Bielorrusia", 23], 
			["Birmania Myanmar", 24], 
			["Bolivia", 25], 
			["Bosnia y Herzegovina", 26], 
			["Botswana", 27], 
			["Brasil", 28], 
			["Brunei", 29], 
			["Bulgaria", 30], 
			["Burkina Faso", 31], 
			["Burundi", 32], 
			["Butan", 33], 
			["Cabo Verde", 34], 
			["Camboya", 35], 
			["Camerun", 36], 
			["Canada", 37], 
			["Chad", 38], 
			["Chile", 39], 
			["China", 40], 
			["Chipre", 41], 
			["Colombia", 42], 
			["Comores", 43], 
			["Congo", 44], 
			["Corea del Norte", 45], 
			["Corea del Sur", 46], 
			["Costa de Marfil", 47], 
			["Costa Rica", 48], 
			["Croacia", 49], 
			["Cuba", 50], 
			["Dinamarca", 51], 
			["Dominica", 52], 
			["Ecuador", 53], 
			["Egipto", 54], 
			["El Salvador", 55], 
			["El Vaticano", 56], 
			["Emiratos arabes Unidos", 57], 
			["Eritrea", 58], 
			["Eslovaquia", 59], 
			["Eslovenia", 60], 
			["Espa�a", 61], 
			["Estados Unidos", 62], 
			["Estonia", 63], 
			["Etiopia", 64], 
			["Filipinas", 65], 
			["Finlandia", 66], 
			["Fiji", 67], 
			["Francia", 68], 
			["Gabon", 69], 
			["Gambia", 70], 
			["Georgia", 71], 
			["Ghana", 72], 
			["Gibraltar", 73], 
			["Granada", 74], 
			["Grecia", 75], 
			["Guatemala", 77], 
			["Guinea", 78], 
			["Guinea Ecuatorial", 78], 
			["Guinea Bissau", 80], 
			["Guyana", 81], 
			["Haiti", 82], 
			["Honduras", 83], 
			["Hungria", 84], 
			["India", 85], 
			["Indian Ocean", 86], 
			["Indonesia", 87], 
			["Iran", 88], 
			["Iraq", 89], 
			["Irlanda", 90], 
			["Islandia", 91], 
			["Israel", 92], 
			["Italia", 93], 
			["Jamaica", 94], 
			["Japon", 95], 
			["Jersey", 96], 
			["Jordania", 97], 
			["Kazajstan", 98], 
			["Kenia", 99], 
			["Kirguistan", 101], 
			["Kiribati", 102], 
			["Kuwait", 103], 
			["Laos", 104], 
			["Lesoto", 105], 
			["Letonia", 106], 
			["Libano", 107], 
			["Liberia", 108], 
			["Libia", 109], 
			["Liechtenstein", 110], 
			["Lituania", 111], 
			["Luxemburgo", 112], 
			["Macedonia", 113], 
			["Madagascar", 114], 
			["Malasia", 115], 
			["Malawi", 116], 
			["Maldivas", 117], 
			["Mali", 118], 
			["Malta", 119], 
			["Marruecos", 120], 
			["Mauricio", 121], 
			["Mauritania", 122], 
			["Mexico", 123], 
			["Micronesia", 124], 
			["Moldavia", 125], 
			["Monaco", 126], 
			["Mongolia", 127], 
			["Montserrat", 128], 
			["Mozambique", 129], 
			["Namibia", 130], 
			["Nauru", 131], 
			["Nepal", 132], 
			["Nicaragua", 133], 
			["Niger", 134], 
			["Nigeria", 135], 
			["Noruega", 136], 
			["Nueva Zelanda", 137], 
			["Oman", 138], 
			["Paises Bajos", 139], 
			["Pakistan", 140], 
			["Palau", 141], 
			["Panama", 142], 
			["Papua Nueva Guinea", 143], 
			["Paraguay", 144], 
			["Peru", 145], 
			["Polonia", 146], 
			["Portugal", 147], 
			["Puerto Rico", 148], 
			["Qatar", 149], 
			["Reino Unido", 150], 
			["Republica Centroafricana", 151], 
			["Republica Checa", 152], 
			["Republica Democratica del Congo", 153], 
			["Republica Dominicana", 154], 
			["Ruanda", 155], 
			["Rumania", 156], 
			["Rusia", 157], 
			["Sahara Occidental", 158], 
			["Samoa", 159], 
			["San Cristobal y Nevis", 160], 
			["San Marino", 161], 
			["San Vicente y las Granadinas", 162], 
			["Santa Lucia", 163], 
			["Santo Tome y Principe", 164], 
			["Senegal", 165], 
			["Seychelles", 166], 
			["Sierra Leona", 167], 
			["Singapur", 168], 
			["Siria", 169], 
			["Somalia", 170], 
			["Southern Ocean", 171], 
			["Sri Lanka", 172], 
			["Swazilandia", 173], 
			["Sudafrica", 174], 
			["Sudan", 175], 
			["Suecia", 176], 
			["Suiza", 177], 
			["Surinam", 178], 
			["Tailandia", 179], 
			["Taiwan", 180], 
			["Tanzania", 181], 
			["Tayikistan", 182], 
			["Togo", 183], 
			["Tokelau", 184], 
			["Tonga", 185], 
			["Trinidad y Tobago", 186], 
			["Tunez", 187], 
			["Turkmekistan", 188], 
			["Turquia", 189], 
			["Tuvalu", 190], 
			["Ucrania", 191], 
			["Uganda", 192], 
			["Uruguay", 193], 
			["Uzbekistan", 194], 
			["Vanuatu", 195], 
			["Venezuela", 196], 
			["Vietnam", 197], 
			["Yemen", 198], 
			["Djibouti", 199], 
			["Zambia", 200], 
			["Zimbabue", 201]
  		]
  	end

	def label_country
	    if select_country.flatten.include?(nacionality.to_i)
	      select_country.each { |first_name, id| return first_name if nacionality.to_i == id }
	    end
	end
end