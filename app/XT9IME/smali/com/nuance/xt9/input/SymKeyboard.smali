.class public Lcom/nuance/xt9/input/SymKeyboard;
.super Lcom/nuance/xt9/input/KeyboardEx;
.source "SymKeyboard.java"


# instance fields
.field mColumn:I

.field mFocusedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

.field mFocusedX:I

.field mFocusedY:I

.field mRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-direct {p0}, Lcom/nuance/xt9/input/SymKeyboard;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;II)V

    .line 23
    invoke-direct {p0}, Lcom/nuance/xt9/input/SymKeyboard;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 0
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/nuance/xt9/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 28
    invoke-direct {p0}, Lcom/nuance/xt9/input/SymKeyboard;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v3, listX:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, listY:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 35
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/KeyboardEx$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 36
    .local v1, key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    iget v7, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->x:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 37
    .local v5, x:Ljava/lang/Integer;
    iget v7, v1, Lcom/nuance/xt9/input/KeyboardEx$Key;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 38
    .local v6, y:Ljava/lang/Integer;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 39
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 42
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v1           #key:Lcom/nuance/xt9/input/KeyboardEx$Key;
    .end local v5           #x:Ljava/lang/Integer;
    .end local v6           #y:Ljava/lang/Integer;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/SymKeyboard;->mColumn:I

    .line 46
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/nuance/xt9/input/SymKeyboard;->mRow:I

    .line 47
    iput v8, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    .line 48
    iput v8, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    .line 49
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v7, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 50
    return-void
.end method


# virtual methods
.method public getFocusedKey()Lcom/nuance/xt9/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    return-object v0
.end method

.method public getFocusedX()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    return v0
.end method

.method public getFocusedY()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    return v0
.end method

.method public handleKey(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    .line 72
    sparse-switch p1, :sswitch_data_0

    .line 101
    :cond_0
    :goto_0
    iget v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mColumn:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    add-int v0, v1, v2

    .line 102
    .local v0, idx:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v0, v1, v3

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 106
    return-void

    .line 74
    .end local v0           #idx:I
    :sswitch_0
    iget v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mRow:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mRow:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    .line 75
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->isInvalidKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/SymKeyboard;->handleKey(I)V

    goto :goto_0

    .line 80
    :sswitch_1
    iget v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mRow:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    .line 81
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->isInvalidKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/SymKeyboard;->handleKey(I)V

    goto :goto_0

    .line 86
    :sswitch_2
    iget v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mColumn:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mColumn:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    .line 87
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->isInvalidKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/SymKeyboard;->handleKey(I)V

    goto :goto_0

    .line 92
    :sswitch_3
    iget v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mColumn:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    .line 93
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->isInvalidKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/SymKeyboard;->handleKey(I)V

    goto :goto_0

    .line 98
    :sswitch_4
    const-string v1, "KeyboardEx"

    const-string v2, "SymKeyboard >> handleKey(ENTER)"

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method isInvalidKey()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    iget v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mColumn:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    add-int v0, v1, v2

    .line 110
    .local v0, idx:I
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nuance/xt9/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/xt9/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public resetFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedX:I

    .line 54
    iput v1, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedY:I

    .line 55
    invoke-virtual {p0}, Lcom/nuance/xt9/input/SymKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/KeyboardEx$Key;

    iput-object v0, p0, Lcom/nuance/xt9/input/SymKeyboard;->mFocusedKey:Lcom/nuance/xt9/input/KeyboardEx$Key;

    .line 56
    return-void
.end method
