.class public Lcom/google/android/motiongesture/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/motiongesture/GestureEvent$Type;
    }
.end annotation


# static fields
.field public static final DETECTED:I = 0x0

.field public static final ENDED:I = 0x1

.field public static final RESET:I = 0x2


# instance fields
.field private final mProgress:I

.field private final mType:Lcom/google/android/motiongesture/GestureEvent$Type;


# direct methods
.method public constructor <init>(Lcom/google/android/motiongesture/GestureEvent$Type;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/motiongesture/GestureEvent;->mType:Lcom/google/android/motiongesture/GestureEvent$Type;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/motiongesture/GestureEvent;->mProgress:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/android/motiongesture/GestureEvent$Type;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/motiongesture/GestureEvent;->mType:Lcom/google/android/motiongesture/GestureEvent$Type;

    .line 44
    iput p2, p0, Lcom/google/android/motiongesture/GestureEvent;->mProgress:I

    .line 45
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/motiongesture/GestureEvent;->mProgress:I

    return v0
.end method

.method public getType()Lcom/google/android/motiongesture/GestureEvent$Type;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/motiongesture/GestureEvent;->mType:Lcom/google/android/motiongesture/GestureEvent$Type;

    return-object v0
.end method
