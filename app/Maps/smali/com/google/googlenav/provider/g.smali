.class abstract Lcom/google/googlenav/provider/g;
.super Lcom/google/googlenav/provider/d;


# instance fields
.field protected final a:Landroid/database/Cursor;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/provider/d;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/provider/g;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/google/googlenav/provider/g;->a:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/g;->b:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/provider/d;->close()V

    iget-object v0, p0, Lcom/google/googlenav/provider/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/provider/g;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget v0, p0, Lcom/google/googlenav/provider/g;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/provider/g;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/g;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/provider/g;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/g;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
