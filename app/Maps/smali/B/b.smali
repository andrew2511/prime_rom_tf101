.class public final LB/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:LB/l;

.field public final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB/a;

    invoke-direct {v0}, LB/a;-><init>()V

    sput-object v0, LB/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(LB/l;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress out of range [0.0, 1.0] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, LB/b;->a:LB/l;

    iput p2, p0, LB/b;->b:F

    return-void
.end method


# virtual methods
.method public a(LB/b;)I
    .locals 2

    iget-object v0, p0, LB/b;->a:LB/l;

    iget-object v1, p1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, LB/l;->a(LB/l;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LB/b;->b:F

    iget v1, p1, LB/b;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LB/b;

    invoke-virtual {p0, p1}, LB/b;->a(LB/b;)I

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

    const/4 v1, 0x0

    instance-of v0, p1, LB/b;

    if-eqz v0, :cond_1

    check-cast p1, LB/b;

    invoke-virtual {p0, p1}, LB/b;->a(LB/b;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x47

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, LB/b;->a:LB/l;

    invoke-virtual {v0}, LB/l;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x899

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LB/b;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lae/b;->a(Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "index"

    iget-object v2, p0, LB/b;->a:LB/l;

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "progress"

    iget v2, p0, LB/b;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    invoke-virtual {v0}, Lae/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, LB/b;->a:LB/l;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, LB/b;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
