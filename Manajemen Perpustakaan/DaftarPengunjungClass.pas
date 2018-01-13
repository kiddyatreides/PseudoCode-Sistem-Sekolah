Class DaftarPengunjung

	index()
		try
			select all data from table daftarpengunjung
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
			get idkunjungan
			get idbuku
			get idsiswa
			get tgl

			if idkunjungan are exists on table daftarpengunjung
				show alert "Data dengan idkunjungan tidak boleh sama"
			else
				save record to table daftarpengunjung
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check id from table daftarpengunjung
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get idkunjungan
			get idbuku
			get idsiswa
			get tgl

			if idkunjungan are same with another data on table daftarpengunjung
				show alert "Ditemukan data dengan nisn yang sama"
			else
				update record to table daftarpengunjung 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check id from table daftarpengunjung
			if data found
				delete data from table daftarpengunjung
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
