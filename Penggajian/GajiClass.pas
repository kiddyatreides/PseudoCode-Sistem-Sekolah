Class Gaji

	index()
		try
			select all data from table gaji join from table pegawai, slipgaji
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
			get Jabatan
			get NIP
			get Gaji Pokok
			get ID Gaji
			get Bonus
			get No Slip
			get Periode
			get Lembur
			get Tunjangan

			if ID Gaji are exists on table gaji
				show alert "Data dengan ID Gaji tidak boleh sama"
			else
				save record to table gaji
				index() with alert "Data berhasil disimpan"
		catch
			get exception

	edit(id)
		try
			get id
			check ID Gaji from table gaji
			if data found
				show to view
			else
				show alert "Data tidak ditemukan"
		catch
			get exception

	update(id)
		try
			get Jabatan
			get NIP
			get Gaji Pokok
			get ID Gaji
			get Bonus
			get No Slip
			get Periode
			get Lembur
			get Tunjangan

			if ID Gaji are same with another data on table gaji
				show alert "Ditemukan data dengan ID Gaji yang sama"
			else
				update record to table gaji 
				index() with alert "Data berhasil diubah"
		catch
			get exception
