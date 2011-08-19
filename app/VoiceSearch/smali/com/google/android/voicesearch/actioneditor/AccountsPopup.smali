.class public Lcom/google/android/voicesearch/actioneditor/AccountsPopup;
.super Lcom/google/android/voicesearch/actioneditor/ArrowPopup;
.source "AccountsPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;
    }
.end annotation


# instance fields
.field private mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

.field private mListener:Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    const/high16 v1, 0x7f03

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/AccountsPopup;)Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;

    return-object v0
.end method

.method public static createAlternatesPopup(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/AccountsPopup;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;-><init>(Landroid/content/Context;)V

    .line 97
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    :goto_0
    return-object v0

    .line 100
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030005

    const v3, 0x7f0d0006

    invoke-direct {v1, p0, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/AccountsPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/AccountsPopup$Listener;

    .line 89
    return-void
.end method
