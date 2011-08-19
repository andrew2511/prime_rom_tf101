.class public abstract Lcom/layar/adapters/LayarCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "LayarCursorAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFrom:[I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/layar/adapters/LayarCursorAdapter;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/adapters/LayarCursorAdapter;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/LayarCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    invoke-virtual {p0}, Lcom/layar/adapters/LayarCursorAdapter;->_initProjection()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/LayarCursorAdapter;->mProjection:[Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/layar/adapters/LayarCursorAdapter;->mProjection:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layar/adapters/LayarCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private findColumns([Ljava/lang/String;)V
    .locals 5
    .parameter "from"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Projection was not specified!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/layar/adapters/LayarCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 42
    .local v1, cursor:Landroid/database/Cursor;
    array-length v0, p1

    .line 43
    .local v0, count:I
    iget-object v3, p0, Lcom/layar/adapters/LayarCursorAdapter;->mFrom:[I

    if-nez v3, :cond_1

    .line 44
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/layar/adapters/LayarCursorAdapter;->mFrom:[I

    .line 46
    :cond_1
    if-eqz v1, :cond_4

    .line 47
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_3

    .line 53
    :cond_2
    return-void

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/layar/adapters/LayarCursorAdapter;->mFrom:[I

    aget-object v4, p1, v2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2           #i:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 51
    iget-object v3, p0, Lcom/layar/adapters/LayarCursorAdapter;->mFrom:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected abstract _initProjection()[Ljava/lang/String;
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 35
    iget-object v0, p0, Lcom/layar/adapters/LayarCursorAdapter;->mProjection:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layar/adapters/LayarCursorAdapter;->findColumns([Ljava/lang/String;)V

    .line 36
    return-void
.end method
