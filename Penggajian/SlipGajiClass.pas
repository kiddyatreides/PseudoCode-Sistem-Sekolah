Class SlipGaji

	index()
		try
			select all data from table slipgaji
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
			get No Slip
			get tanggal
			get jumlah
			get penerima
			get pencetak
			get keterangan

			if no slip are exists on table slipgaji
				show alert "Data dengan no slip tidak boleh sama"
			else
				save record to table slipgaji
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check no slip from table slipgaji
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get No Slip
			get tanggal
			get jumlah
			get penerima
			get pencetak
			get keterangan

			if no slip are same with another data on table slipgaji
				show alert "Ditemukan data dengan no slip yang sama"
			else
				update record to table slipgaji
				index() with alert "Data berhasil diubah"
		catch
			get exception

	delete(id)
		try
			get id
			check no slip from table slipgaji
			if data found
				delete data from table slipgaji
				index() with alert "Data berhasil dihapus"
			else
				show alert "Data tidak ditemukan"
		catch
			get exception
