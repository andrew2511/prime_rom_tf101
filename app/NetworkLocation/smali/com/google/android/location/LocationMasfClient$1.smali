.class Lcom/google/android/location/LocationMasfClient$1;
.super Ljava/lang/Object;
.source "LocationMasfClient.java"

# interfaces
.implements Lcom/google/masf/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/LocationMasfClient;->getNetworkLocation(Ljava/util/Collection;ILcom/google/android/location/CellState;Ljava/util/List;Ljava/util/List;JLcom/google/android/location/CollectedLocation;Lcom/google/android/location/NetworkLocationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/LocationMasfClient;

.field final synthetic val$finalProvider:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method constructor <init>(Lcom/google/android/location/LocationMasfClient;Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/location/LocationMasfClient$1;->this$0:Lcom/google/android/location/LocationMasfClient;

    iput-object p2, p0, Lcom/google/android/location/LocationMasfClient$1;->val$finalProvider:Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 350
    move-object v0, p1

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    move-object v1, v0

    .line 351
    .local v1, response:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v3, p0, Lcom/google/android/location/LocationMasfClient$1;->this$0:Lcom/google/android/location/LocationMasfClient;

    invoke-static {v3, v1}, Lcom/google/android/location/LocationMasfClient;->access$000(Lcom/google/android/location/LocationMasfClient;Lcom/google/common/io/protocol/ProtoBuf;)Z

    move-result v2

    .line 352
    .local v2, successful:Z
    iget-object v3, p0, Lcom/google/android/location/LocationMasfClient$1;->val$finalProvider:Lcom/google/android/location/NetworkLocationProvider;

    iget-object v4, p0, Lcom/google/android/location/LocationMasfClient$1;->this$0:Lcom/google/android/location/LocationMasfClient;

    invoke-static {v4}, Lcom/google/android/location/LocationMasfClient;->access$100(Lcom/google/android/location/LocationMasfClient;)Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/location/NetworkLocationProvider;->locationReceived(Landroid/location/Location;Z)V

    .line 354
    return-void
.end method
