c	dimension v(100)
c	integer a(100)
c1	print *,'enter nv plus values'
c	read *,nv,(v(i),i=1,nv)
c	if (nv.eq.0) goto 999
c	print *,'enter na plus integer pointers'
c	read *,na,(a(i),i=1,na)
c	call sort(v,a,1,na)
c	n=max0(na,nv)
c	print *,' perm=',(a(i),i=1,n)
c	print *,' sort=',(v(i),i=1,n)
c	goto1
c999	stop
c	end

      subroutine sort (v,a,ii,jj)

c     puts into a the permutation vector which sorts v into
c     increasing order.  only elements from ii to jj are considered.
c     arrays iu(k) and il(k) permit sorting up to 2**(k+1)-1 elements

c     the vector v is sorted upon return

c     this is a modification of cacm algorithm #347 by r. c. singleton,
c     which is a modified hoare quicksort.

      dimension a(jj),v(1),iu(20),il(20)
      integer t,tt
      integer a
      real v
      m=1
      i=ii
      j=jj
 10   if (i.ge.j) go to 80
 20   k=i
      ij=(j+i)/2
      t=a(ij)
      vt=v(ij)
      if (v(i).le.vt) go to 30
      a(ij)=a(i)
      a(i)=t
      t=a(ij)
      v(ij)=v(i)
      v(i)=vt
      vt=v(ij)
 30   l=j
      if (v(j).ge.vt) go to 50
      a(ij)=a(j)
      a(j)=t
      t=a(ij)
      v(ij)=v(j)
      v(j)=vt
      vt=v(ij)
      if (v(i).le.vt) go to 50
      a(ij)=a(i)
      a(i)=t
      t=a(ij)
      v(ij)=v(i)
      v(i)=vt
      vt=v(ij)
      go to 50
 40   a(l)=a(k)
      a(k)=tt
      v(l)=v(k)
      v(k)=vtt
 50   l=l-1
      if (v(l).gt.vt) go to 50
      tt=a(l)
      vtt=v(l)
 60   k=k+1
      if (v(k).lt.vt) go to 60
      if (k.le.l) go to 40
      if (l-i.le.j-k) go to 70
      il(m)=i
      iu(m)=l
      i=k
      m=m+1
      go to 90
 70   il(m)=k
      iu(m)=j
      j=l
      m=m+1
      go to 90
 80   m=m-1
      if (m.eq.0) return
      i=il(m)
      j=iu(m)
 90   if (j-i.gt.10) go to 20
      if (i.eq.ii) go to 10
      i=i-1
 100  i=i+1
      if (i.eq.j) go to 80
      t=a(i+1)
      vt=v(i+1)
      if (v(i).le.vt) go to 100
      k=i
 110  a(k+1)=a(k)
      v(k+1)=v(k)
      k=k-1
      if (vt.lt.v(k)) go to 110
      a(k+1)=t
      v(k+1)=vt
      go to 100
      end

