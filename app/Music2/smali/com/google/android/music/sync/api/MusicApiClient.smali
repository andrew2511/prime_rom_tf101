.class public interface abstract Lcom/google/android/music/sync/api/MusicApiClient;
.super Ljava/lang/Object;
.source "MusicApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/api/MusicApiClient$OpType;,
        Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract createMagicPlaylist(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract getPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/NotModifiedException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPlaylistEntries(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/NotModifiedException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPlaylistEntry(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/NotModifiedException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPlaylists(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/NotModifiedException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation
.end method

.method public abstract getTrack(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/NotModifiedException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation
.end method

.method public abstract getTracks(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/Track;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/NotModifiedException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation
.end method

.method public abstract mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "TT;",
            "Lcom/google/android/music/sync/api/MusicApiClient$OpType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation
.end method

.method public abstract mutateItems(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation
.end method

.method public abstract reportTrackStats(Landroid/accounts/Account;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation
.end method
