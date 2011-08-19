.class public Lcom/google/android/location/os/real/q;
.super Ljava/lang/Object;

# interfaces
.implements Lw/u;


# instance fields
.field private final a:Lw/v;

.field private final b:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/q;->a:Lw/v;

    iput-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Lw/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/os/real/q;->a:Lw/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->a:Lw/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->a:Lw/v;

    invoke-virtual {v0, p1, p2}, Lw/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/q;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->a:Lw/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->a:Lw/v;

    invoke-virtual {v0, p1, p2}, Lw/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    iget-object v0, p0, Lcom/google/android/location/os/real/q;->b:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/q;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/q;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/q;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
