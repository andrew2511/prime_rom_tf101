.class Lba/a;
.super LT/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lba/c;

.field final synthetic d:Lba/b;


# direct methods
.method constructor <init>(Lba/b;LT/c;Ljava/lang/String;ILba/c;)V
    .locals 0

    iput-object p1, p0, Lba/a;->d:Lba/b;

    iput-object p3, p0, Lba/a;->a:Ljava/lang/String;

    iput p4, p0, Lba/a;->b:I

    iput-object p5, p0, Lba/a;->c:Lba/c;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lba/a;->d:Lba/b;

    invoke-static {v0}, Lba/b;->a(Lba/b;)Landroid/location/Geocoder;

    move-result-object v0

    iget-object v1, p0, Lba/a;->a:Ljava/lang/String;

    iget v2, p0, Lba/a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lba/a;->c:Lba/c;

    invoke-interface {v1, v0}, Lba/c;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lba/a;->c:Lba/c;

    invoke-interface {v0}, Lba/c;->a()V

    goto :goto_0
.end method
