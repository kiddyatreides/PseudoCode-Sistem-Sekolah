Class InfoSPP

	index()
		try
			select all data from table info_spp join from table siswa
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
			get idtransaksi
			get id_info
			get nisn
			get kelas
			get jumlah
			get tanggal_transaksi

			if idtransaksi are exists on table info_spp
				show alert "Data dengan idtransaksi tidak boleh sama"
			else
				save record to table info_spp
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check idtransaksi from table info_spp
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get idtransaksi
			get id_info
			get nisn
			get kelas
			get jumlah
			get tanggal_transaksi

			if idtransaksi are same with another data on table info_spp
				show alert "Ditemukan data dengan idtransaksi yang sama"
			else
				update record to table info_spp 
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check idtransaksi from table info_spp
			if data found
				delete data from table info_spp
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
