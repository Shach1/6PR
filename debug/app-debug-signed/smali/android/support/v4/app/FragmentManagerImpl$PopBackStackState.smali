.class Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I

    .line 3801
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3802
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    .line 3803
    iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    .line 3804
    iput p4, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    .line 3805
    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3810
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3813
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3814
    .local v0, "childManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3817
    const/4 v1, 0x0

    return v1

    .line 3820
    .end local v0    # "childManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v7, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
