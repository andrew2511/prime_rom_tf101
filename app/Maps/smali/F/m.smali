.class LF/m;
.super Lak/m;


# instance fields
.field private a:Ljava/util/Locale;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LF/m;->a:Ljava/util/Locale;

    iput-object p1, p0, LF/m;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x2b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, LF/m;->a:Ljava/util/Locale;

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, LF/m;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ls/v;->u:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iget-object v1, p0, LF/m;->b:Landroid/content/Context;

    iget-object v2, p0, LF/m;->a:Ljava/util/Locale;

    invoke-static {v2}, LF/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Las/a;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)Z

    iget-object v1, p0, LF/m;->a:Ljava/util/Locale;

    invoke-static {v1, v0}, LF/c;->a(Ljava/util/Locale;Law/e;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
