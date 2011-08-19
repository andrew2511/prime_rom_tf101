.class public Lcom/zinio/mobile/android/resources/download/k;
.super Lcom/zinio/mobile/android/resources/download/e;
.source "SourceFile"


# static fields
.field private static d:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/zinio/mobile/android/resources/download/c;

    invoke-direct {v0}, Lcom/zinio/mobile/android/resources/download/c;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/resources/download/k;->d:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/zinio/mobile/android/resources/download/e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p5, p0, Lcom/zinio/mobile/android/resources/download/k;->a:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/zinio/mobile/android/resources/download/k;->b:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/resources/download/k;->c:J

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/resources/download/e;-><init>(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/k;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/resources/download/k;->a:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/zinio/mobile/android/resources/download/k;->c:J

    .line 119
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/zinio/mobile/android/resources/download/k;->c:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/resources/download/e;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
