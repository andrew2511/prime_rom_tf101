.class LJ/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lv/d;

.field final synthetic c:LJ/i;


# direct methods
.method constructor <init>(LJ/i;[Ljava/lang/String;Lv/d;)V
    .locals 0

    iput-object p1, p0, LJ/k;->c:LJ/i;

    iput-object p2, p0, LJ/k;->a:[Ljava/lang/String;

    iput-object p3, p0, LJ/k;->b:Lv/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, LJ/k;->c:LJ/i;

    invoke-static {v0}, LJ/i;->a(LJ/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    const-string v3, "name=? AND address=?"

    iget-object v4, p0, LJ/k;->a:[Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LJ/k;->c:LJ/i;

    invoke-static {v0}, LJ/i;->a(LJ/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, LJ/k;->b:Lv/d;

    invoke-static {v2}, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a(Lv/d;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LJ/k;->c:LJ/i;

    invoke-static {v0}, LJ/i;->a(LJ/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, LJ/k;->b:Lv/d;

    invoke-static {v2}, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a(Lv/d;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "name=? AND address=?"

    iget-object v4, p0, LJ/k;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
