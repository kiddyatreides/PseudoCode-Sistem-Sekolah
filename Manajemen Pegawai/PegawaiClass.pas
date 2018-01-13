Class Pegawai

	index()
		try
			select all data from table pegawai join from table jabatan
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
			get NIP
			get Alamat
			get Riwayat Pendidikan
			get Notelp
			get Gender
			get Kode Golongan
			get Kode Jabatan

			if NIP are exists
				show alert "Data dengan NIP sama tidak boleh"
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
			get NIP
			get Alamat
			get Riwayat Pendidikan
			get Notelp
			get Gender
			get Kode Golongan
			get Kode Jabatan

			if NIP are same with another data
				show alert "Ditemukan data dengan NIP yang sama"
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
