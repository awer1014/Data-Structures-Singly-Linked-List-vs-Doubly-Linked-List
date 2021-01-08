//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;


struct node *first, *last,*findNode = NULL,*top;
struct Dnode *Dfirst, *Dlast, *findDNode = NULL;


struct node {
	int data;
	struct node *next;
};


struct node* newNode(int element) {
	struct node *a;
	a = (struct node *)malloc(sizeof(struct node));
	a->data = element;
	a->next = NULL;
	return a;
};


struct Dnode {
	int data;
	struct Dnode *prev, *next;
};


struct Dnode* newDnode(int element) {
	struct Dnode *a;
	a = (struct Dnode *)malloc(sizeof(struct Dnode));
	a->data = element;
	a->prev = a->next = NULL;
	return a;
}


// node
void print() {
	String ans ="";
	for (struct node *f = first->next; f != first; f = f->next) {
		ans += IntToStr(f->data);
		ans += "->";
	}
	Form1->Memo1->Lines->Add(ans + "X");
}


void insert(node *p, int n) {
	struct node *a = newNode(n),*b = p;
	a->next = b->next;
	b->next =a;
	first->data++;
	if (a->next == first) {
		last = a;
	}
}


struct node* find(int target){
	for (struct node *f = first; f != last; f = f->next){
		if (f->next->data == target) {
			return f;
		}
	}
	return NULL;
}


void deleteNode(int flag, node *d) {
	if (flag == 1) {
		if (d->next == last) {
			last = d;
		}
		d->next = d->next->next;
		first->data--;
		free(d->next);
	}
	else{
		for (struct node *f = first->next; f != first; f = f->next) {
			free(f);
		}
		first->next = first;
		last = first;
		first ->data = 0;
	}
}


void randomNode(int n,int range) {
	srand(time(NULL));
	for (int i = 0; i < n; i++) {
		insert(last,rand()%range+1);
	}
}


void reverseNode() {
	node *a, *b, *c;
	a = first;
	b = first->next;
	last = b;
	while (c != first) {
		c = b->next;
		b->next = a;
		a = b;
		b = c;
	}
	first->next = a;
}


//Dnode
void Dprint() {
	String ans ="";
	for (struct Dnode *f = Dfirst->next; f != Dfirst; f = f->next) {
		ans += IntToStr(f->data);
		ans += "->";
	}
	Form1->Memo2->Lines->Add(ans + "X");
}


void Dinsert(Dnode *p, int n) {
	struct Dnode *a = newDnode(n),*b = p;
	a->next = b->next;
	a->prev = b;
	b->next = a;
	Dfirst->data++;
	if (a->next == Dfirst) {
		Dlast = a;
	}
}


struct Dnode* Dfind(int target) {
	for (struct Dnode *f = Dfirst; f != Dlast; f = f->next) {
		if (f->next->data == target) {
			return f;
		}
	}
	return NULL;
}


void deleteDNode(int flag, Dnode *d) {
	if (flag == 1) {
		if (d->next == Dlast) {
			Dlast = d;
		}
		struct Dnode *f = d->next->next;
		d->next = f;
		f->prev;
		Dfirst->data--;
		free(d->next);
	}
	else {
		for (struct Dnode *f = Dfirst->next; f != Dfirst; f = f->next){
			free(f);
		}
		Dfirst->next = Dfirst;
		Dlast = Dfirst;
		Dfirst->data = 0;
	}
}


void randomDNode(int n, int range) {
	srand(time(NULL));
	for(int i = 0; i < n; i++){
		Dinsert(Dlast,rand()%range+1);
	}
}


void reverseDNode() {
	Dnode *a = Dfirst->next, *b;
	Dlast = Dfirst->next;
	while (a != Dfirst) {
		b = a->next;
		a->next = a->prev;
		a->prev = b;
		a = b;
	}
	Dfirst->next = Dfirst->prev;
	Dfirst->prev = Dlast;
}


//Stack
void pushStack(int n) {
	struct node *a = newNode(n);
	a->next = top ->next;
	top->next = a;
	top->data++;
}


int popStack() {
	if (top->data == 0){
		return -1;
	}
	struct node *a = top->next;
	top->next = a->next;
	int d = a->data;
	free(a);
	top->data--;
	return d;
}


void printStack() {
	String ans = "";
	for (struct node *f = top->next; f!= top; f = f->next){
		ans += IntToStr(f->data);
		ans += "->";
	}
	Form1->Memo3->Lines->Add(ans +"X");
}


void randomStack (int n, int range) {
	srand(time(NULL));
	for (int i = 0; i < n; i++){
		pushStack(rand()%range+1);
	}
}


//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	first = newNode(0);
	first->next = first;
	last = first;

	Dfirst = newDnode(0);
	Dfirst->prev = Dfirst->next = Dfirst;
	Dlast = Dfirst;

	top = newNode(0);
	top->next = top;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
	insert(first,Edit1->Text.ToInt());
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
	insert(first->next,Edit1->Text.ToInt());
  print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
	insert(last,Edit1->Text.ToInt());
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
	if(first->data != 0)
		findNode = find(Edit2->Text.ToInt());
	else
		findNode = NULL;

	if(findNode == NULL)
		Form1->Memo1->Lines->Add("Didn't Find it!");
	else{
		Form1->Memo1->Lines->Add("Find it!");
		Button5->Enabled = true;
		Button6->Enabled = true;
		Button7->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
	insert(findNode->next,Edit1->Text.ToInt());
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
	deleteNode(1,findNode);
	print();
	Button6->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
	insert(findNode,Edit1->Text.ToInt());
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
	randomNode(Edit3->Text.ToInt(),Edit4->Text.ToInt());
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{

	deleteNode(2,first);
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button10Click(TObject *Sender)
{
	reverseNode();
	print();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button11Click(TObject *Sender)
{
	Dinsert(Dfirst,Edit5->Text.ToInt());
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button12Click(TObject *Sender)
{
	Dinsert(Dfirst->next,Edit5->Text.ToInt());
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button13Click(TObject *Sender)
{
	Dinsert(Dlast,Edit5->Text.ToInt());
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button15Click(TObject *Sender)
{
	if(Dfirst->data != 0)
		findDNode = Dfind(Edit6->Text.ToInt());
	else
		findDNode = NULL;

	if(findDNode == NULL)
		Form1->Memo2->Lines->Add("Didn't Find it!");
	else{
		Form1->Memo2->Lines->Add("Find it!");
		Button15->Enabled = true;
		Button16->Enabled = true;
		Button17->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button14Click(TObject *Sender)
{
	Dinsert(findDNode->next,Edit5->Text.ToInt());
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button16Click(TObject *Sender)
{
	deleteDNode(1,findDNode);
	Dprint();
	Button16->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button17Click(TObject *Sender)
{
	Dinsert(findDNode,Edit5->Text.ToInt());
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button18Click(TObject *Sender)
{
	randomDNode(Edit7->Text.ToInt(),Edit8->Text.ToInt());
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button19Click(TObject *Sender)
{

	deleteDNode(2,Dfirst);
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button20Click(TObject *Sender)
{
	reverseDNode();
	Dprint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button21Click(TObject *Sender)
{
	randomStack(Edit9->Text.ToInt(),Edit10->Text.ToInt());
	printStack();
	Button23->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button22Click(TObject *Sender)
{
	pushStack(Edit11->Text.ToInt());
	printStack();
	Button23->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button23Click(TObject *Sender)
{
	int i = popStack();
	if(i == -1){
		Button23->Enabled = false;
	}
	printStack();
	Edit12->Text = IntToStr(i);
}
//---------------------------------------------------------------------------
