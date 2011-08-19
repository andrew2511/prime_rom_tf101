.class Lcom/google/googlenav/ui/view/android/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aN;

.field private final b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aN;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/by;->a:Lcom/google/googlenav/ui/view/android/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/by;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x306

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/by;->a:Lcom/google/googlenav/ui/view/android/aN;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/aN;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-ne p2, v7, :cond_3

    if-nez p3, :cond_1

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/by;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/by;->b:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/by;->a(Z)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/by;->a:Lcom/google/googlenav/ui/view/android/aN;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aN;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0xb

    new-instance v4, Lh/fP;

    const-string v5, "image/jpeg"

    invoke-direct {v4, v3, v5, v1}, Lh/fP;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7, v4}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    if-nez p2, :cond_0

    invoke-direct {p0, v4}, Lcom/google/googlenav/ui/view/android/by;->a(Z)V

    goto :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_1
.end method

.method public ay_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
