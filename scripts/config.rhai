let titles_type = ["Survey", "Review", "Overview","Framework"];
let titles_model = ["Attention","Diffusion"];
let titles_method = ["Gaussian","Process","Segmentation","Interactive",
                     "Continual","Incremental","Normalization","Equivar","Weak","Parameter",
                     "Efficient","Fourier","Variation","Video"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "FUZZ IEEE", "ICRA", "SIGGRAPH", "UAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "CIKM", "ICDE", "ICDM", "ICDT", "KDD", "PAKDD", "WWW", 
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
