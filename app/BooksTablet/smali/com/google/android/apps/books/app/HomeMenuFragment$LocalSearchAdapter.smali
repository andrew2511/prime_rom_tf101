.class Lcom/google/android/apps/books/app/HomeMenuFragment$LocalSearchAdapter;
.super Landroid/widget/CursorAdapter;
.source "HomeMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalSearchAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 227
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 269
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 270
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 271
    .local v1, text1:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 274
    .local v2, text2:Landroid/widget/TextView;
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, volumeId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 277
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 284
    .local v0, invalidPosition:Z
    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 285
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_1
    return-object v1

    .line 283
    .end local v0           #invalidPosition:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 287
    .restart local v0       #invalidPosition:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 232
    .local v0, count:I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 243
    .local v0, footer:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v1

    :goto_1
    return v1

    .line 242
    .end local v0           #footer:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 243
    .restart local v0       #footer:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 249
    .local v0, footer:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 250
    if-nez p2, :cond_0

    .line 251
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 252
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040012

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object v2, p2

    .line 257
    :goto_1
    return-object v2

    .end local v0           #footer:Z
    :cond_1
    move v0, v3

    .line 248
    goto :goto_0

    .line 257
    .restart local v0       #footer:Z
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 263
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 264
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
