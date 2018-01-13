Class Guru

	index()
		try
			select all data from table guru
			show to view
		catch
			get exception

	create()
		try
			show view add data
		catch
			get exception

	store()
		try
			get NIP
			get Umur
			get Gender
			get ID Guru
			get Nama
			get Alamat
			get Riwayat Pendidikan

			if NIP are exists on table guru
				show alert "Data dengan NIP tidak boleh sama"
			else
				save record to table guru
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check id from table Guru
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
		get NIP
			get Umur
			get Gender
			get ID Guru
			get Nama
			get Alamat
			get Riwayat Pendidikan

			if NIP are same with another data on table guru
				show alert "Ditemukan data dengan NIP yang sama"
			else
				update record to table guru 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check id from table Guru
			if data found
				delete data from table guru
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
