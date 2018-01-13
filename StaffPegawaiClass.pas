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

			if ID Staff Pegawai are exists on table staffpegawai
				show alert "Data dengan ID Staff Pegawai tidak boleh sama"
			else
				save record to table staffpegawai
				index()  with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID Staff from table staffpegawai
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

			if NIP are same with another data on table staffpegawai
				show alert "Ditemukan data dengan ID Staff Pegawai yang sama"
			else
				update record to table staffpegawai
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check ID Staff from table staffpegawai
			if data found
				delete data from table staffpegawai
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
