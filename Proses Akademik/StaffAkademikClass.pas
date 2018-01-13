Class Staff_Akademik

	index()
		try
			select all data from table Staff_Akademik
			show to view
		catch
			get exception

	create()
		try
			select all data from table Staff_Akademik
			show view add data
		catch
			get exception

	store()
		try
			get ID_StaffAkademik
			get NIP
			get Nama
			get Gender
			get Alamat
			get Kode_Jabatan

			if ID_StaffAkademik are exists
				show alert "Data dengan ID_StaffAkademik sama tidak boleh"
			else
				save record to table Staff_Akademik
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID_StaffAkademik from table Staff_Akademik
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get ID_StaffAkademik
			get NIP
			get Nama
			get Gender
			get Alamat
			get Kode_Jabatan
			if ID_StaffAkademik are same with another data from table Staff_Akademik
				show alert "Ditemukan data dengan ID_StaffAkademik yang sama"
			else
				update record to database
				index()  with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID_StaffAkademik from table Staff_Akademik
			if data found
				delete data from table Staff_Akademik
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception