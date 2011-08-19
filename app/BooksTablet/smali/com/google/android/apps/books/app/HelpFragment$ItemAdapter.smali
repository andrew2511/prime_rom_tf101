.class Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/HelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/apps/books/app/HelpFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/HelpFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/HelpFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->this$0:Lcom/google/android/apps/books/app/HelpFragment;

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 197
    return-void
.end method


# virtual methods
.method public add(IILandroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "text1"
    .parameter "text2"
    .parameter "onClick"

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/apps/books/app/HelpFragment$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/HelpFragment$Item;-><init>(Lcom/google/android/apps/books/app/HelpFragment$1;)V

    .line 201
    .local v0, item:Lcom/google/android/apps/books/app/HelpFragment$Item;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->text1:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->text2:Ljava/lang/CharSequence;

    .line 203
    iput-object p3, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->onClick:Landroid/view/View$OnClickListener;

    .line 204
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "text1"
    .parameter "text2"
    .parameter "onClick"

    .prologue
    .line 208
    new-instance v0, Lcom/google/android/apps/books/app/HelpFragment$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/HelpFragment$Item;-><init>(Lcom/google/android/apps/books/app/HelpFragment$1;)V

    .line 209
    .local v0, item:Lcom/google/android/apps/books/app/HelpFragment$Item;
    iput-object p1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->text1:Ljava/lang/CharSequence;

    .line 210
    iput-object p2, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->text2:Ljava/lang/CharSequence;

    .line 211
    iput-object p3, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->onClick:Landroid/view/View$OnClickListener;

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 217
    if-nez p2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/HelpFragment$Item;

    .line 224
    .local v0, item:Lcom/google/android/apps/books/app/HelpFragment$Item;
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iget-object v1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->text1:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object v1, v0, Lcom/google/android/apps/books/app/HelpFragment$Item;->text2:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-object p2
.end method
