.class public LaV/c;
.super LaV/b;


# static fields
.field private static final e:LaV/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LaV/a;

    const/16 v1, 0x64

    const-string v2, "IntChunkArrayManager"

    invoke-direct {v0, v1, v2}, LaV/a;-><init>(ILjava/lang/String;)V

    sput-object v0, LaV/c;->e:LaV/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xa

    sget-object v1, LaV/c;->e:LaV/d;

    invoke-direct {p0, p1, v0, v1}, LaV/b;-><init>(IILaV/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/IntBuffer;)V
    .locals 4

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    iget v0, p0, LaV/c;->b:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LaV/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/16 v2, 0x400

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, LaV/c;->b:I

    iget-object v1, p0, LaV/c;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, LaV/c;->c:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, LaV/c;->d:I

    invoke-virtual {p1, v0, v3, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :cond_1
    return-void
.end method
