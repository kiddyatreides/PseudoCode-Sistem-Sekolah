Class StaffPegawai

	index()
		try
			select all data from table staffpegawai join from table jabatan
			show to view
		catch
			get exception

	create()
		try
			select all data from table jabatan
			show view add data
		catch
			get exception

	store()
		try
			get nama
			get ID Staff Pegawai
			get Alamat
			get Gender
			get NIP

			if ID Staff Pegawai are exists
				show alert "Data dengan ID Staff Pegawai tidak boleh sama"
			else
				save record to database
				index()
		catch
			get exception

	edit(id)
		try
			get id
			check id from database
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get nama
			get ID Staff Pegawai
			get Alamat
			get Gender
			get NIP

			if NIP are same with another data
				show alert "Ditemukan data dengan ID Staff Pegawai yang sama"
			else
				update record to database with alert "Data berhasil diubah"
				index()
		catch
			get exception

	delete(id)
		try
			get id
			check id from database
			if data found
				delete data from database
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
