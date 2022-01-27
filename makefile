report2021.pdf: report.dvi 
	dvipdfmx -p a4 report.dvi

report.dvi: report.tex 1_intro.tex 2_cgmd.tex 3_results.tex\
	Figs/fig1.eps Figs/fig2.eps Figs/fig3.eps Figs/fig4.eps\
       	Figs/fig5.eps Figs/fig6.eps Figs/fig7.eps Figs/fig8.eps Figs/fig9.eps 
	platex report.tex

Figs/fig1.eps: Figs/uhyd.svgz
	inkscape -z -f Figs/uhyd.svgz -E Figs/fig1.eps
Figs/fig2.eps: Figs/uhyd_new.svgz
	inkscape -z -f Figs/uhyd_new.svgz -E Figs/fig2.eps

Figs/fig3.eps: Figs/initial_model.svgz
	inkscape -z -f Figs/initial_model.svgz -E Figs/fig3.eps
Figs/fig4.eps: Figs/smec_snaps.svgz
	inkscape -z -f Figs/smec_snaps.svgz -E Figs/fig4.eps
Figs/fig5.eps: Figs/smec_mu03_erg.svgz
	inkscape -z -f Figs/smec_mu03_erg.svgz -E Figs/fig5.eps
Figs/fig6.eps: Figs/smec_hists.svgz
	inkscape -z -f Figs/smec_hists.svgz -E Figs/fig6.eps
Figs/fig7.eps: Figs/smec_broad.svgz
	inkscape -z -f Figs/smec_broad.svgz -E Figs/fig7.eps
Figs/fig8.eps: Figs/snaps_mono.svgz
	inkscape -z -f Figs/snaps_mono.svgz -E Figs/fig8.eps
Figs/fig9.eps: Figs/hists_mono.svgz
	inkscape -z -f Figs/hists_mono.svgz -E Figs/fig9.eps

