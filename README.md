# BEN-CSE — Shared Class Code & Assignments

A shared Git repository for **Bennett University CSE students** to upload, organise, and share class code, lab work, and completed assignments so it's easy for anyone in the batch to find, reuse, and learn from.

> The goal is simple: keep all course-related code in one searchable place so students don't have to ask around for solutions.

---

## How to Use

### Getting the repo
```bash
git clone <REPO_URL>
cd ben-cse
```

### Uploading your work
Each course lives in its own folder (see [Folder Structure](#folder-structure)). Drop your files into the right folder, then:
```bash
git add .
git commit -m "ADD: <course> <topic> solution"
git push
```

### Finding someone's work
Use GitHub search, or just browse the folder for your course/semester.

---

## Folder Structure

Keep this layout so things stay easy to find:

```
ben-cse/
├── README.md
├── <SEMESTER>/              # e.g. "sem-1", "sem-2" ...
│   ├── <COURSE_CODE>/       # e.g. "C", "DS", "OS", "DBMS", "ML"
│   │   ├── lab-01/
│   │   ├── lab-02/
│   │   ├── assignments/
│   │   │   ├── assignment-1/
│   │   │   └── assignment-2/
│   │   ├── projects/
│   │   └── notes/           # (optional) references, slides, cheat-sheets
│   └── ...
└── resources/               # shared templates, snippets, boilerplate
```

Rules for the layout:
- **One folder per course**, named after the course code (all caps, e.g. `DS`, `DBMS`).
- **One folder per lab / assignment / project**, numbered in order (`lab-01`, `assignment-2`).
- Each lab/assignment folder should contain a short `README.md` (see naming below).
- Put shared boilerplate, templates, and reusable snippets in `resources/`.

---

## Submission Rules

### 1. Name things clearly
- Folders: lowercase, hyphenated (`lab-01`, `assignment-2`, `final-project`).
- Files: keep the filename your course/TA expects (e.g. `q3.c`, `Lab2_Q1.java`) so it's easy to identify.
- Every lab/assignment folder **should** contain a short `README.md`.

### 2. Every lab/assignment folder needs a README
Keep it tiny — enough so another student knows what it is without opening the code:
```markdown
# DS — Lab 02: Linked List Basics
- **Course:** Data Structures
- **Semester:** 2
- **Author:** Your Name (roll no. XX-XXXX)
- **Topics:** singly linked list, insert/delete, traversal
- **How to run:** `gcc main.c -o main && ./main`
- **Notes / approach:** short summary of the approach or tricky parts
```

### 3. Commit messages
Use this format so history is readable:
```
ADD:    <course> <lab/assignment> solution
UPDATE: <course> <lab/assignment> fix/notes
DOCS:   add README / notes for <course>
```
Examples:
```
ADD: DS lab-02 linked list solution
UPDATE: OS assignment-1 scheduling fix
DOCS: add notes for DBMS normalisation
```

### 4. Code quality
- Add a `# how to compile / run` comment line at the top of each entry file, or cover it in the folder README.
- Keep it readable — this repo is a learning resource, not just a dump.
- No binary junk (`.class`, `node_modules/`, `.DS_Store`, large datasets). Add a `.gitignore` per project if needed.

### 5. Academic integrity — important
- **This is for learning and reference, not cheating.**
- Read and understand any code before you use or submit it.
- Do **not** submit another student's work as your own.
- Always give credit in the folder README (author line, above).
- If your course/TA has a policy against sharing, keep that work in the private version and respect it.

### 6. One branch for now
- Work on `main`. For larger projects, create a branch (`feat/...`, `fix/...`) and merge when done.
- Don't force-push to `main` — it wipes out other students' work.

---

## Getting Started Checklist

- [ ] `git clone` the repo
- [ ] Create `<SEMESTER>/<COURSE_CODE>/` if it doesn't exist
- [ ] Add your `lab-XX/` or `assignment-N/` folder with your files
- [ ] Write the small folder `README.md` (author, topics, how to run)
- [ ] `git add .`, `git commit -m "ADD: ..."`, `git push`
- [ ] Done — your classmates can now find and learn from your work

---

## Contact / Maintenance

- Open an **issue** (or ping a maintainer) to request a new course folder or to report something broken.
- A student maintainer can help with folder cleanup and `.gitignore` setup.

---

*Made by Bennett CSE students, for Bennett CSE students.*
