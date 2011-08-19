.class public Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackTuple"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple$1;

    invoke-direct {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->valueOf(I)Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->url:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "url"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 93
    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->url:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackTuple["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->state:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$StackTuple;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
