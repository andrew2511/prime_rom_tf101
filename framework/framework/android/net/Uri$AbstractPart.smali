.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$AbstractPart$Representation;
    }
.end annotation


# instance fields
.field volatile decoded:Ljava/lang/String;

.field volatile encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    .line 1970
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    .line 1971
    return-void
.end method


# virtual methods
.method final getDecoded()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1977
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    move v0, v1

    .line 1978
    .local v0, hasDecoded:Z
    :goto_a
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    :goto_e
    return-object v1

    .line 1977
    .end local v0           #hasDecoded:Z
    :cond_f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a

    .line 1978
    .restart local v0       #hasDecoded:Z
    :cond_12
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    goto :goto_e
.end method

.method abstract getEncoded()Ljava/lang/String;
.end method

.method final writeTo(Landroid/os/Parcel;)V
    .registers 8
    .parameter "parcel"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1983
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_26

    move v1, v5

    .line 1986
    .local v1, hasEncoded:Z
    :goto_b
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_28

    move v0, v5

    .line 1988
    .local v0, hasDecoded:Z
    :goto_14
    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 1989
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1991
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2001
    :goto_25
    return-void

    .end local v0           #hasDecoded:Z
    .end local v1           #hasEncoded:Z
    :cond_26
    move v1, v4

    .line 1983
    goto :goto_b

    .restart local v1       #hasEncoded:Z
    :cond_28
    move v0, v4

    .line 1986
    goto :goto_14

    .line 1992
    .restart local v0       #hasDecoded:Z
    :cond_2a
    if-eqz v1, :cond_35

    .line 1993
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_25

    .line 1995
    :cond_35
    if-eqz v0, :cond_41

    .line 1996
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1997
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_25

    .line 1999
    :cond_41
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
