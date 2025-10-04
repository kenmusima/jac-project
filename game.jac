import from byllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

def get_mrna() -> str by llm(method  = 'Reasoning');

def classify_mrna(mrna: str, diagnosis: str) -> str by llm(method = 'Reasoning');

with entry {
    print("Basic classification of mRNA.");
    mrna = get_mrna();

    printf(f"🔬 mRNA Diagnostic{mrna}");
    print("======================");

    entry = input("Enter mRNA sequence:");
    response = classify_mrna(entry, diagnosis);
    if response == "AAA"{
        print("Diagnosis: Disease 1");
    } elif response == "CCC"{
        print("Diagnosis: Disease 2");
    } else {
        print("Diagnosis: Healthy");
    }
    print(f"Check diagnosis again");
}