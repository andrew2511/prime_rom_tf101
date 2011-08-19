.class final Lcom/google/googlenav/ui/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/googlenav/ui/al;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/al;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/al;-><init>(Landroid/os/Parcel;Lcom/google/googlenav/ui/t;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/googlenav/ui/al;
    .locals 1

    new-array v0, p1, [Lcom/google/googlenav/ui/al;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/q;->a(Landroid/os/Parcel;)Lcom/google/googlenav/ui/al;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/q;->a(I)[Lcom/google/googlenav/ui/al;

    move-result-object v0

    return-object v0
.end method
