.class public final LB/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB/n;

    invoke-direct {v0}, LB/n;-><init>()V

    sput-object v0, LB/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB/l;->a:I

    iput p2, p0, LB/l;->b:I

    return-void
.end method


# virtual methods
.method public a(LB/l;)I
    .locals 2

    iget v0, p0, LB/l;->a:I

    iget v1, p1, LB/l;->a:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LB/l;->b:I

    iget v1, p1, LB/l;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(II)Z
    .locals 1

    iget v0, p0, LB/l;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, LB/l;->b:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LB/l;

    invoke-virtual {p0, p1}, LB/l;->a(LB/l;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LB/l;

    if-eqz v0, :cond_0

    check-cast p1, LB/l;

    iget v0, p1, LB/l;->a:I

    iget v1, p1, LB/l;->b:I

    invoke-virtual {p0, v0, v1}, LB/l;->a(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x35

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, LB/l;->a:I

    add-int/lit16 v0, v0, 0x66b

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LB/l;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lae/b;->a(Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "stageIndex"

    iget v2, p0, LB/l;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "stageSegmentIndex"

    iget v2, p0, LB/l;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    invoke-virtual {v0}, Lae/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, LB/l;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, LB/l;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
