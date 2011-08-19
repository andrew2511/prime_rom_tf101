.class Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/NotesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotesArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/amazon/kcp/reader/NotesActivity$Note;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NotesActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/NotesActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/reader/NotesActivity$Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, notes:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/kcp/reader/NotesActivity$Note;>;"
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 256
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 261
    move-object v2, p2

    .line 262
    .local v2, noteListItem:Landroid/view/View;
    if-nez v2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03002b

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/NotesActivity$Note;

    .line 269
    .local v1, note:Lcom/amazon/kcp/reader/NotesActivity$Note;
    iget-object v5, v1, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IAnnotation;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, noteType:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00eb

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v9}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserLocation()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, location:Ljava/lang/String;
    const v5, 0x7f0c0092

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v5, v1, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    iget-object v5, v1, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v4

    .line 290
    :cond_1
    const v5, 0x7f0c0093

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-object v2

    .line 272
    .end local v0           #location:Ljava/lang/String;
    .end local v3           #noteType:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .restart local p0
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00ee

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .restart local v3       #noteType:Ljava/lang/String;
    goto :goto_0

    .line 275
    .end local v3           #noteType:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 276
    .restart local v3       #noteType:Ljava/lang/String;
    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
