.class public Lcom/google/googlenav/aE;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Law/e;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/aE;->a:I

    iput-object p2, p0, Lcom/google/googlenav/aE;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/aE;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/aE;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/aE;->e:Law/e;

    return-void
.end method

.method public static a(Law/e;)Lcom/google/googlenav/aE;
    .locals 6

    const/4 v3, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Law/e;->c(I)[B

    move-result-object v2

    sparse-switch v1, :sswitch_data_0

    :try_start_0
    const-string v2, "PLACE_PAGE"

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received extended proto data for an unknown story of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, v0

    :goto_1
    new-instance v0, Lcom/google/googlenav/aE;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v3}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {p0, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/aE;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;)V

    return-object v0

    :sswitch_0
    :try_start_1
    sget-object v3, LV/A;->b:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-object v3, LV/m;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object v3, LV/p;->c:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-object v3, LV/o;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget-object v3, LV/w;->c:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget-object v3, LV/k;->b:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    sget-object v3, LV/t;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    sget-object v3, LV/x;->c:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    sget-object v3, LV/g;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    sget-object v3, LV/j;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    sget-object v3, LV/r;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    sget-object v3, LV/l;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    sget-object v3, LV/h;->a:Law/f;

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v4}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLACE_PAGE, received corrupted data for story of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v5, v0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_0
        0xe -> :sswitch_4
        0xf -> :sswitch_3
        0x11 -> :sswitch_9
        0x15 -> :sswitch_5
        0x1a -> :sswitch_8
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x23 -> :sswitch_b
        0x24 -> :sswitch_a
        0x33 -> :sswitch_c
    .end sparse-switch
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aE;->e:Law/e;

    return-object v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/aE;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/googlenav/aE;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/aE;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/aE;->e:Law/e;

    invoke-virtual {v1}, Law/e;->e()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
