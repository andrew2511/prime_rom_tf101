.class Lcom/google/googlenav/ui/view/android/bh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/T;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/T;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/T;Lcom/google/googlenav/ui/view/android/C;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bh;-><init>(Lcom/google/googlenav/ui/view/android/T;)V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 7

    const/16 v4, 0xc

    const/4 v3, 0x0

    const v2, 0x7a120

    const/4 v6, -0x1

    if-ne p2, v6, :cond_6

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/ui/view/android/T;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaY/a;->a(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/google/googlenav/ui/view/android/T;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/T;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0xb

    new-instance v3, Lh/fP;

    const-string v4, "image/jpeg"

    invoke-static {}, Lcom/google/googlenav/ui/view/android/T;->o()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lh/fP;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/T;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0, v4, v6, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-static {}, Lcom/google/googlenav/ui/view/android/T;->o()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7a120

    invoke-static {v1, v0, v2}, LaY/a;->b(Ljava/lang/String;II)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/T;->b(Lcom/google/googlenav/ui/view/android/T;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, LaY/a;->a(Ljava/io/InputStream;)I

    move-result v0

    if-ge v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/T;->b(Lcom/google/googlenav/ui/view/android/T;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/T;->b(Lcom/google/googlenav/ui/view/android/T;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/T;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0, v4, v6, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/T;->b(Lcom/google/googlenav/ui/view/android/T;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v1

    const v2, 0x7a120

    :try_start_9
    invoke-static {v1, v0, v2}, LaY/a;->a(Ljava/io/InputStream;II)[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bh;->a:Lcom/google/googlenav/ui/view/android/T;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/T;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0, v4, v6, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public ay_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
