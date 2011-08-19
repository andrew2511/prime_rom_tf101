.class Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LabeledEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LabeledEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/model/AccountType$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasCustomSelection:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    .line 548
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 549
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 551
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 554
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, customText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 556
    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->add(Ljava/lang/Object;)V

    .line 557
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    .line 561
    .end local v0           #customText:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$000(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v2

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->addAll(Ljava/util/Collection;)V

    .line 562
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 585
    if-nez p2, :cond_0

    .line 586
    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 591
    .local v4, view:Landroid/view/View;
    :goto_0
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 593
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 595
    .local v3, type:Lcom/android/contacts/model/AccountType$EditType;
    sget-object v5, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    if-ne v3, v5, :cond_1

    .line 596
    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    iget-object v6, v6, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, text:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    return-object v4

    .line 588
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #textView:Landroid/widget/TextView;
    .end local v3           #type:Lcom/android/contacts/model/AccountType$EditType;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 598
    .restart local v2       #textView:Landroid/widget/TextView;
    .restart local v3       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 576
    const v0, 0x1090009

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 570
    const v0, 0x1090008

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomSelection()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    return v0
.end method
