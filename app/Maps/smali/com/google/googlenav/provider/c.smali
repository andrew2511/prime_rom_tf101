.class Lcom/google/googlenav/provider/c;
.super Lcom/google/googlenav/provider/g;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/provider/g;-><init>(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    const-string v1, "contacts_accessor_contact_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/c;->b:I

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    const-string v1, "contacts_accessor_formatted_address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/c;->c:I

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    const-string v1, "contacts_accessor_contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/provider/c;->d:I

    return-void
.end method


# virtual methods
.method public getLong(I)J
    .locals 2

    iget v0, p0, Lcom/google/googlenav/provider/c;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->d:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/googlenav/provider/c;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->mPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "\\s"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/googlenav/provider/c;->c:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/provider/c;->a:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/googlenav/provider/c;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
