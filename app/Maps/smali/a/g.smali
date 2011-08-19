.class La/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/maps/driveabout/vector/cu;

.field public b:I

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>(La/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iput-object v0, p0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v0, p1, La/g;->b:I

    iput v0, p0, La/g;->b:I

    iget v0, p1, La/g;->c:I

    iput v0, p0, La/g;->c:I

    iget-wide v0, p1, La/g;->d:J

    iput-wide v0, p0, La/g;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cu;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iput p2, p0, La/g;->b:I

    iput p3, p0, La/g;->c:I

    iput-wide p4, p0, La/g;->d:J

    return-void
.end method
