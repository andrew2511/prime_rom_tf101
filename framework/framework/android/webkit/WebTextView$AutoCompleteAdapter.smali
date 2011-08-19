.class public Landroid/webkit/WebTextView$AutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x10900a4

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 881
    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 875
    invoke-direct {p0, p1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;)V
    .registers 2
    .parameter "tv"

    .prologue
    .line 900
    iput-object p1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    .line 901
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 888
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 890
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_15

    iget-object v1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 891
    iget-object v1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 893
    :cond_15
    return-object v0
.end method
