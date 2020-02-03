all: atd
	 dune build

atd:
	atdgen -t fos-sdk/agent_types.atd
	atdgen -j-std fos-sdk/agent_types.atd
	atdgen -v fos-sdk/agent_types.atd
	atdgen -t fos-sdk/fos_types.atd
	atdgen -j-std fos-sdk/fos_types.atd
	atdgen -v fos-sdk/fos_types.atd
	atdgen -t fos-sdk/fos_records_types.atd
	atdgen -j-std fos-sdk/fos_records_types.atd

	atdgen -j-std fos-sdk/router.atd


	atdgen -j-std fos-sdk/base_network.atd
	atdgen -j-std fos-sdk/user_network.atd
	atdgen -j-std fos-sdk/infra_network.atd

	atdgen -j-std fos-sdk/base_fdu.atd
	atdgen -j-std fos-sdk/base_atomic_entity.atd
	atdgen -j-std fos-sdk/base_entity.atd

	atdgen -j-std fos-sdk/user_fdu.atd
	atdgen -j-std fos-sdk/user_atomic_entity.atd
	atdgen -j-std fos-sdk/user_entity.atd

	atdgen -j-std fos-sdk/infra_fdu.atd
	atdgen -j-std fos-sdk/infra_atomic_entity.atd
	atdgen -j-std fos-sdk/infra_entity.atd




	atdgen -j-std fos-sdk/nfv.atd

	atdgen -j-std fos-sdk/mec.atd

	atdgen -j-std fos-sdk/mec_interfaces.atd


clean:
	rm -rf fos-sdk/agent_types*.ml fos-sdk/agent_types*.mli
	rm -rf fos-sdk/fos_types*.ml fos-sdk/fos_types*.mli
	rm -rf fos-sdk/fos_records_types*.ml fos-sdk/fos_records_types*.mli
	rm -rf fos-sdk/types_record*.ml fos-sdk/types_record*.mli

	rm -rf fos-sdk/base_fdu*.ml*
	rm -rf fos-sdk/base_atomic_entity*.ml*
	rm -rf fos-sdk/base_entity*.ml*

	rm -rf fos-sdk/user_fdu*.ml*
	rm -rf fos-sdk/user_atomic_entity*.ml*
	rm -rf fos-sdk/user_entity*.ml*

	rm -rf fos-sdk/infra_fdu*.ml*
	rm -rf fos-sdk/infra_atomic_entity*.ml*
	rm -rf fos-sdk/infra_entity*.ml*

	rm -rf fos-sdk/*_network*.ml*

	rm -rf fos-sdk/nfv*.ml*
	rm -rf fos-sdk/mec*.ml*
	rm -rf fos-sdk/router*.ml*
	dune clean
	rm -rf ./_build


install:
	opam install . --working-dir -y
uninstall:
	opam remove fos-sdk