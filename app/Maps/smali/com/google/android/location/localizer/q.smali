.class Lcom/google/android/location/localizer/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:LW/o;

.field private final b:Ljava/lang/Long;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;LW/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/localizer/q;->c:I

    iput-object p1, p0, Lcom/google/android/location/localizer/q;->b:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/location/localizer/q;->a:LW/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/q;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/q;->c:I

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/location/localizer/q;->c:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/location/localizer/q;->c:I

    return v0
.end method

.method public c()LW/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/localizer/q;->a:LW/o;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/location/localizer/q;->b:Ljava/lang/Long;

    return-object v0
.end method
