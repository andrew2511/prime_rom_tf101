.class Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;
.super Landroid/widget/CursorAdapter;
.source "TableOfContentsActionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChaptersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 191
    return-void
.end method

.method private isChapterEnabled(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->this$0:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->access$100(Lcom/google/android/apps/books/widget/TableOfContentsActionItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 220
    :goto_0
    return v0

    .line 214
    :pswitch_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 217
    :pswitch_1
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 203
    invoke-direct {p0, p3}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem$ChaptersAdapter;->isChapterEnabled(Landroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 196
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
