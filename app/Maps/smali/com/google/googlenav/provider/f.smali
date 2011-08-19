.class Lcom/google/googlenav/provider/f;
.super Lcom/google/googlenav/provider/g;


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/g;-><init>(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/google/googlenav/provider/f;->a:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/f;->b:I

    iget-object v0, p0, Lcom/google/googlenav/provider/f;->a:Landroid/database/Cursor;

    const-string v1, "displayQuery"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/f;->c:I

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/provider/f;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/provider/f;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/f;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/provider/f;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/f;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/provider/f;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/f;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
